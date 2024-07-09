#include "dds/dds.h"
#include "TopicDiscovery.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_SAMPLES 1

int main (int argc, char ** argv)
{
    dds_entity_t participant;
    dds_entity_t topic;
    dds_entity_t reader;
    TopicDiscovery_Data *msg;
    int last_printed_messageID = -1; // Initialize to an invalid messageID

    void *samples[MAX_SAMPLES];
    dds_sample_info_t infos[MAX_SAMPLES];
    dds_return_t rc;
    dds_qos_t *qos;
    (void)argc;
    (void)argv;

    /* Create a Participant. */
    participant = dds_create_participant (DDS_DOMAIN_DEFAULT, NULL, NULL);
    if (participant < 0)
        DDS_FATAL("dds_create_participant: %s\n", dds_strretcode(-participant));

    /* Create a Topic. */
    topic = dds_create_topic (
        participant, &TopicDiscovery_Data_desc, "TopicDiscovery_Data", NULL, NULL);
    if (topic < 0)
        DDS_FATAL("dds_create_topic: %s\n", dds_strretcode(-topic));

    /* Create a reliable Reader. */
    qos = dds_create_qos ();
    dds_qset_reliability (qos, DDS_RELIABILITY_RELIABLE, DDS_SECS (10));
    reader = dds_create_reader (participant, topic, qos, NULL);
    if (reader < 0)
        DDS_FATAL("dds_create_reader: %s\n", dds_strretcode(-reader));
    dds_delete_qos(qos);

    printf ("\n=== [Subscriber] Waiting for a sample ...\n");
    fflush (stdout);

    /* Initialize sample buffer, by pointing the void pointer within
     * the buffer array to a valid sample memory location. */
    samples[0] = TopicDiscovery_Data__alloc ();

    /* Poll until data has been read. */
    while (true)
    {
        /* Do the actual read.
         * The return value contains the number of read samples. */
        rc = dds_read (reader, samples, infos, MAX_SAMPLES, MAX_SAMPLES);
        if (rc < 0)
            DDS_FATAL("dds_read: %s\n", dds_strretcode(-rc));

        /* Check if we read some data and it is valid. */
        if ((rc > 0) && (infos[0].valid_data))
        {
            /* Print Message if messageID is different from last printed */
            msg = (TopicDiscovery_Data*) samples[0];
            if (msg->messageID != last_printed_messageID)
            {
                printf ("=== [Subscriber] Received : ");
                printf ("Message (%d, %s)\n", msg->messageID, msg->message);
                fflush (stdout);
                last_printed_messageID = msg->messageID; // Update last printed messageID
            }
        }
        else
        {
            /* Polling sleep. */
            dds_sleepfor (DDS_MSECS (20));
        }
    }

    /* Free the data location. */
    TopicDiscovery_Data_free (samples[0], DDS_FREE_ALL);

    /* Deleting the participant will delete all its children recursively as well. */
    rc = dds_delete (participant);
    if (rc != DDS_RETCODE_OK)
        DDS_FATAL("dds_delete: %s\n", dds_strretcode(-rc));

    return EXIT_SUCCESS;
}

