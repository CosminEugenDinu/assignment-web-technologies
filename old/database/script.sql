CREATE TABLE `orders`
(
    `id`                     varchar(36)                               NOT NULL,
    `client`                 varchar(200)                              NOT NULL,
    `total`                  decimal(13, 2)                            NOT NULL,
    `date`                   datetime                                  NOT NULL,
    `payment`                enum ('cash', 'card')                     NOT NULL,
    `workmanship`            boolean                                   NOT NULL,
    `workmanship_percentage` decimal(10, 2)                             NOT NULL,
    `quantity`               int(10)                                   NOT NULL,
    `status`                 enum ('received',
        'processing', 'sent', 'completed', 'out_of_stock', 'returned') NOT NULL,
    `return_reason`          varchar(4000)
);

INSERT INTO `orders` (`id`, `client`, `total`, `date`, `payment`, `workmanship`, `workmanship_percentage`, `quantity`,
                      `status`, `return_reason`)
VALUES ('3f911bf6-2ad5-49e0-9f59-fd526437c917', 'niculaie.petri@mail.com', 6285.96, '2022-04-23 09:55', 'CARD', true,
        15.7, 10, 'RETURNED', 'Produsul nu contine instructiuni de utilizare'),
       ('7394d7f5-ce44-452e-a6e4-1ede4d12a7d4', 'sanda.dimir@mail.com', 9709.05, '2022-04-23 08:13', 'CASH', true,
        17.86, 14, 'COMPLETED', NULL),
       ('edb9c895-7acd-43d9-af3f-2ae3dd428194', 'iancu.stirbei@mail.com', 18343.9, '2022-04-21 19:39', 'CASH', false,
        0.0, 2, 'OUT_OF_STOCK', NULL),
       ('49bb633e-1553-4aa8-bbfd-efa738492e01', 'petru.costin@mail.com', 5727.28, '2022-04-20 16:52', 'CASH', false,
        0.0, 7, 'SENT', NULL),
       ('089a7c6c-2ef3-4580-9c72-c0dd66882b7e', 'iuliu.cristea@mail.com', 13937.37, '2022-04-20 16:48', 'CARD', false,
        0.0, 7, 'PROCESSING', NULL),
       ('a5417dbf-73a2-4304-ae12-f91ac71f9be2', 'lucian.cojocaru@mail.com', 8821.34, '2022-04-20 11:35', 'CASH', false,
        0.0, 10, 'PROCESSING', NULL),
       ('0ae35e31-91fc-441a-b950-a1bb042f6259', 'stefan.saftoiu@mail.com', 2388.23, '2022-04-20 09:09', 'CARD', false,
        0.0, 18, 'RECEIVED', NULL),
       ('4f5bca3f-6fbb-45bb-b109-e193d2d08798', 'victor.breban@mail.com', 16887.51, '2022-04-20 05:26', 'CASH', false,
        0.0, 7, 'COMPLETED', NULL),
       ('09fd9a4e-4ae2-4ad7-92ef-a29c7f414ad1', 'iulio.iacobescu@mail.com', 15524.3, '2022-04-19 02:46', 'CASH', false,
        0.0, 19, 'RETURNED', 'Produsul a venit incomplet'),
       ('2e65dbdc-1647-43e5-9c73-289900adf208', 'codrin.raducan@mail.com', 13945.49, '2022-04-18 01:50', 'CARD', true,
        41.52, 4, 'RECEIVED', NULL),
       ('bea21ef0-1233-4dc6-b246-0801fa6521c5', 'valentin.lupu@mail.com', 9751.52, '2022-04-17 09:29', 'CASH', true,
        54.03, 17, 'SENT', NULL),
       ('bfe5b4f4-7c72-45a1-b419-bdaace55e004', 'valentin.ungureanu@mail.com', 10174.6, '2022-04-16 23:08', 'CARD',
        false, 0.0, 6, 'PROCESSING', NULL),
       ('b9cfa175-841a-4379-9eab-b52a0ccc9c0b', 'ilie.dragan@mail.com', 2599.3, '2022-04-14 02:12', 'CASH', false, 0.0,
        11, 'RECEIVED', NULL),
       ('7d19f92c-d311-4770-86fe-573f372cd7a4', 'dragomir.cutov@mail.com', 14842.68, '2022-04-14 00:16', 'CARD', true,
        47.13, 13, 'COMPLETED', NULL),
       ('a5d2bc88-1951-4186-8908-42282c0abc4f', 'remus.szilágyi@mail.com', 17201.07, '2022-04-13 10:05', 'CASH', true,
        16.03, 6, 'OUT_OF_STOCK', NULL),
       ('3d11d7bc-5cf3-43b3-97d9-a8feac380af8', 'iuliu.cristea@mail.com', 16806.88, '2022-04-12 20:46', 'CASH', true,
        34.79, 19, 'COMPLETED', NULL),
       ('0a431c65-9864-4760-a9d1-9c7eb39ef7b3', 'flaviu.cretu@mail.com', 8419.76, '2022-04-11 15:18', 'CASH', true,
        26.9, 11, 'PROCESSING', NULL),
       ('56753a07-9a32-431b-a427-6aaafc03be35', 'dominik.goldis@mail.com', 17812.42, '2022-04-10 15:32', 'CASH', false,
        0.0, 6, 'OUT_OF_STOCK', NULL),
       ('0b48d954-2ab8-4f45-b466-98fc5a2999dc', 'claudiu.dumitrescu@mail.com', 10840.8, '2022-04-08 23:29', 'CARD',
        true, 52.58, 16, 'COMPLETED', NULL),
       ('e1c629d5-18c3-48fb-acbb-3c07c7256559', 'vasile.movila@mail.com', 12366.38, '2022-04-08 21:09', 'CARD', true,
        3.66, 6, 'PROCESSING', NULL),
       ('7d3ca584-08a5-44e0-85bb-85cde83b465a', 'iulio.iacobescu@mail.com', 5806.24, '2022-04-08 02:05', 'CARD', false,
        0.0, 10, 'SENT', NULL),
       ('2ba1a482-95a7-499b-b695-386d670b1b06', 'valentin.lupu@mail.com', 6431.57, '2022-04-07 19:31', 'CASH', true,
        21.19, 17, 'COMPLETED', NULL),
       ('6490800e-ce52-415f-9269-407ff2ed856d', 'timotei.ripnu@mail.com', 14380.98, '2022-04-06 11:20', 'CARD', false,
        0.0, 15, 'SENT', NULL),
       ('ea099795-8e8f-4ce7-aae2-b6bb4d5945e2', 'danut.ilica@mail.com', 10492.82, '2022-04-06 02:23', 'CARD', true,
        30.84, 5, 'OUT_OF_STOCK', NULL),
       ('be083b13-7a2f-48f7-8da2-2702ae319b33', 'teodor.silivasi@mail.com', 5917.34, '2022-04-03 07:25', 'CARD', false,
        0.0, 6, 'RECEIVED', NULL),
       ('184411ff-83a9-4e39-a777-a3a800902398', 'robert.ene@mail.com', 18308.58, '2022-04-02 05:24', 'CASH', true,
        36.72, 14, 'OUT_OF_STOCK', NULL),
       ('99beccd0-bb82-4ffd-bcb9-90d41c43b926', 'apostol.trelles@mail.com', 3233.13, '2022-03-31 18:30', 'CARD', false,
        0.0, 3, 'SENT', NULL),
       ('9ca983a7-5733-43df-9f11-87fe8743c47b', 'valentin.ungureanu@mail.com', 7245.65, '2022-03-31 08:22', 'CASH',
        false, 0.0, 8, 'COMPLETED', NULL),
       ('f010deb2-8de9-4559-b047-14c66757b07f', 'iulio.iacobescu@mail.com', 6790.28, '2022-03-29 13:36', 'CARD', false,
        0.0, 17, 'COMPLETED', NULL),
       ('12f9bc87-829a-4494-a467-506265fdbff2', 'remus.szilágyi@mail.com', 7727.09, '2022-03-29 09:19', 'CARD', true,
        54.16, 3, 'OUT_OF_STOCK', NULL),
       ('4744d410-f5cb-4c70-a770-226edb0f74e0', 'geza.catargiu@mail.com', 7804.91, '2022-03-29 00:28', 'CASH', true,
        18.11, 14, 'RETURNED', 'Produsul nu este aferent calitatii descrise'),
       ('62afaf7a-75ef-4dfa-95a5-f960f1ed94c4', 'ciodaru.vãduva@mail.com', 17443.23, '2022-03-28 13:38', 'CASH', false,
        0.0, 1, 'RETURNED', 'Produsul nu este aferent calitatii descrise'),
       ('930a858c-14ba-4fec-981c-b9fbc3141cb9', 'andrei.giurescu@mail.com', 8819.03, '2022-03-28 08:05', 'CARD', true,
        31.91, 1, 'RETURNED', 'Produsul nu contine instructiuni de utilizare'),
       ('40e4b2b1-53fa-4bab-8a2a-bbe2f3362d3b', 'ciodaru.vãduva@mail.com', 7084.07, '2022-03-28 00:16', 'CARD', false,
        0.0, 15, 'RETURNED', 'Produsul a venit incomplet'),
       ('cdcddca1-f318-4692-a029-809aa0b7b62e', 'sanda.ciora@mail.com', 13160.63, '2022-03-27 06:26', 'CARD', false,
        0.0, 8, 'RETURNED', 'Produsul nu este aferent calitatii descrise'),
       ('b4f11ccb-9de1-41d4-8cb4-ca57b3aa25bb', 'wadim.paler@mail.com', 12103.12, '2022-03-27 04:09', 'CASH', false,
        0.0, 19, 'COMPLETED', NULL),
       ('838a3bb5-dadb-4ee1-af50-ec7c6365c356', 'petru.costin@mail.com', 5370.29, '2022-03-26 21:37', 'CARD', false,
        0.0, 14, 'PROCESSING', NULL),
       ('074dcabf-f350-41a2-b0dc-3da9f2671016', 'vali.prunea@mail.com', 13548.06, '2022-03-26 03:16', 'CASH', true,
        48.59, 5, 'RETURNED', 'Nu am primit produsul comandat'),
       ('56f31d92-62f4-41cf-bd98-c1b8c29c2259', 'silviu.randa@mail.com', 10514.38, '2022-03-24 16:49', 'CARD', false,
        0.0, 4, 'COMPLETED', NULL),
       ('18c8190e-d659-45ce-a65a-514c728062f7', 'codrin.raducan@mail.com', 4913.99, '2022-03-24 16:08', 'CASH', false,
        0.0, 6, 'RETURNED', 'Produsul nu este aferent calitatii descrise'),
       ('11c569ea-f8da-40a6-93ac-d876a142ab70', 'ovidiu.iordache@mail.com', 3576.59, '2022-03-24 10:54', 'CASH', true,
        8.43, 19, 'COMPLETED', NULL),
       ('c27171b6-d52c-4cba-af3f-c4ceb637bd33', 'costea.lupul@mail.com', 13599.9, '2022-03-24 03:21', 'CARD', false,
        0.0, 4, 'SENT', NULL),
       ('c40115b2-0bf1-4170-83d5-75daeb555da3', 'tudor.niculescu@mail.com', 7297.38, '2022-03-23 02:35', 'CARD', false,
        0.0, 7, 'RETURNED', 'Produsul este deteriorat'),
       ('ac0a5f5f-1c57-47d2-bce9-445008b73a70', 'petru.artenie@mail.com', 5045.3, '2022-03-22 12:00', 'CARD', true,
        48.17, 19, 'COMPLETED', NULL),
       ('9920c3d4-22de-44c0-9391-d7751af65b1d', 'ciodaru.hanganu@mail.com', 3255.1, '2022-03-21 22:47', 'CASH', true,
        19.36, 10, 'COMPLETED', NULL),
       ('29c772db-0025-4a5b-a5f8-002aae396229', 'iulio.iacobescu@mail.com', 18008.52, '2022-03-21 11:56', 'CARD', false,
        0.0, 6, 'RECEIVED', NULL),
       ('b0b240b2-db08-437b-a3cb-703ec7f12568', 'petru.artenie@mail.com', 10910.52, '2022-03-21 10:09', 'CASH', false,
        0.0, 8, 'PROCESSING', NULL),
       ('59ccefc3-5648-4296-a68c-b7c4f555faf4', 'andrei.giurescu@mail.com', 19783.11, '2022-03-20 03:09', 'CASH', false,
        0.0, 13, 'SENT', NULL),
       ('7a1fabfe-b03f-4fde-b2ea-8aa6ee031728', 'danut.baicu@mail.com', 5948.63, '2022-03-19 04:27', 'CARD', false, 0.0,
        18, 'SENT', NULL),
       ('ae797950-79b1-441f-adac-527a236a1a18', 'vali.prunea@mail.com', 7654.45, '2022-03-17 03:06', 'CASH', true,
        41.83, 18, 'RETURNED', 'Nu am primit produsul comandat'),
       ('95f6ed19-82a6-41b4-be34-c882e3ed668e', 'liviu.vasiliu@mail.com', 1114.8, '2022-03-17 02:36', 'CASH', true,
        21.27, 18, 'COMPLETED', NULL),
       ('67db2fa8-4a47-42ef-9076-82512486ee33', 'iuliu.cojocar@mail.com', 16410.84, '2022-03-17 02:07', 'CASH', false,
        0.0, 18, 'OUT_OF_STOCK', NULL),
       ('ce146ec2-9a18-4345-b9c7-0e896d0d1e1a', 'ciodaru.hanganu@mail.com', 5580.32, '2022-03-16 23:44', 'CARD', true,
        6.86, 7, 'PROCESSING', NULL),
       ('65b1fb92-8142-4597-a87e-19552adf12f6', 'dragomir.cutov@mail.com', 5428.32, '2022-03-15 20:01', 'CARD', false,
        0.0, 9, 'SENT', NULL),
       ('b8129dee-7670-485a-be94-a7114ca6a48d', 'iuliu.cojocar@mail.com', 19486.06, '2022-03-13 11:23', 'CARD', false,
        0.0, 1, 'COMPLETED', NULL),
       ('148f9e3d-1724-475d-9519-8f1761ec547e', 'geza.catargiu@mail.com', 17872.74, '2022-03-12 09:27', 'CASH', true,
        8.13, 10, 'SENT', NULL),
       ('1b42719f-4078-40ea-9004-f48aa9f0227c', 'geza.vaduva@mail.com', 18040.35, '2022-03-11 23:10', 'CARD', true,
        53.59, 1, 'COMPLETED', NULL),
       ('0670795e-3cf5-4c21-abf8-899b45d1c5e8', 'mihai.pîrvulescu@mail.com', 11541.29, '2022-03-11 21:19', 'CASH', true,
        22.24, 12, 'COMPLETED', NULL),
       ('886281a9-c807-421e-ba41-f376dcf3b0be', 'dragomir.cutov@mail.com', 9600.76, '2022-03-11 15:48', 'CASH', true,
        37.84, 17, 'SENT', NULL),
       ('2c266738-9e38-4c47-af9a-b7fcf4683ba5', 'geza.vaduva@mail.com', 8714.06, '2022-03-11 12:13', 'CARD', false, 0.0,
        9, 'SENT', NULL),
       ('1f8de0dc-3658-48ca-a1ea-1ed878c5b77f', 'ion.groza@mail.com', 10039.5, '2022-03-10 17:03', 'CARD', true, 38.81,
        16, 'RETURNED', 'Produsul nu este aferent calitatii descrise'),
       ('5956b42c-a9bb-42e1-a043-ea42f9071879', 'vali.prunea@mail.com', 12736.96, '2022-03-10 16:13', 'CARD', false,
        0.0, 14, 'RETURNED', 'Produsul a venit incomplet'),
       ('08b3fe46-d33b-4252-b1e7-b8008684e253', 'vali.macedonski@mail.com', 5901.85, '2022-03-10 09:25', 'CASH', true,
        54.39, 1, 'RECEIVED', NULL),
       ('bd6c8bd6-ef8d-4b8d-93fa-61af494131b7', 'iuliu.cojocar@mail.com', 18213.32, '2022-03-10 00:07', 'CASH', true,
        49.63, 18, 'RETURNED', 'Produsul a venit incomplet'),
       ('32799c1b-60ef-4b3b-b8f3-c1d7e022c4de', 'grigore.oprea@mail.com', 18374.24, '2022-03-09 23:10', 'CARD', true,
        59.42, 14, 'OUT_OF_STOCK', NULL),
       ('84da5899-1422-4c2d-b8b8-1418530f1a2f', 'remus.tanase@mail.com', 6361.87, '2022-03-08 19:32', 'CASH', false,
        0.0, 6, 'PROCESSING', NULL),
       ('a5956808-dd55-4655-87e0-6791d5f762d8', 'abel.muresan@mail.com', 5329.63, '2022-03-08 00:21', 'CARD', false,
        0.0, 18, 'RETURNED', 'Produsul este deteriorat'),
       ('0f596449-bce2-4375-b3b1-e3c9032ec51a', 'remus.szilágyi@mail.com', 17569.89, '2022-03-07 18:17', 'CASH', true,
        5.92, 11, 'SENT', NULL),
       ('d136a972-f466-401d-9240-e552c1943ba5', 'stefan.saftoiu@mail.com', 13317.43, '2022-03-07 10:00', 'CASH', false,
        0.0, 19, 'RETURNED', 'Produsul a venit incomplet'),
       ('9de69be4-1b23-4f64-972d-8ab94b474ff0', 'lucian.cojocaru@mail.com', 15655.97, '2022-03-07 01:36', 'CARD', true,
        40.93, 2, 'PROCESSING', NULL),
       ('c47f0647-fc9b-4c66-9f8a-7019b2c1991c', 'vali.prunea@mail.com', 16311.98, '2022-03-06 22:51', 'CARD', false,
        0.0, 8, 'PROCESSING', NULL),
       ('053a01fb-433a-48c3-9715-bfedffc5524f', 'geza.catargiu@mail.com', 15818.47, '2022-03-06 12:25', 'CARD', false,
        0.0, 10, 'SENT', NULL),
       ('e35d15bd-6c9b-4517-a819-b91d3b15b393', 'teodor.silivasi@mail.com', 15342.83, '2022-03-05 10:51', 'CARD', false,
        0.0, 13, 'SENT', NULL),
       ('cb695798-2683-4592-b45c-16f14f258970', 'horasiu.marcovici@mail.com', 2792.35, '2022-03-03 22:00', 'CASH', true,
        39.75, 16, 'OUT_OF_STOCK', NULL),
       ('1dad8b7c-823d-47cb-b2aa-9c51c0009fe0', 'lucian.niculescu@mail.com', 17657.24, '2022-03-02 12:17', 'CASH',
        false, 0.0, 12, 'COMPLETED', NULL),
       ('136652a7-cea7-4f2e-8c48-6acd1c5358f9', 'geza.vaduva@mail.com', 246.0, '2022-03-01 15:15', 'CARD', false, 0.0,
        10, 'OUT_OF_STOCK', NULL),
       ('d9112faa-e2a1-4d34-afc6-3732426eb382', 'codrin.raducan@mail.com', 6178.74, '2022-02-28 18:30', 'CARD', true,
        51.0, 8, 'OUT_OF_STOCK', NULL),
       ('fdf1edcc-d9a4-4115-91a6-20b8abdde29f', 'teodor.silivasi@mail.com', 12882.96, '2022-02-28 04:11', 'CARD', false,
        0.0, 16, 'SENT', NULL),
       ('ee89ffa3-74f1-4c68-8f18-7878b83fb201', 'martin.izbasa@mail.com', 5319.14, '2022-02-27 12:30', 'CARD', true,
        56.85, 5, 'RETURNED', 'Nu am primit produsul comandat'),
       ('fb1b07a9-2e30-4007-84c1-6a805f1b96f5', 'apostol.trelles@mail.com', 4490.8, '2022-02-27 07:46', 'CASH', false,
        0.0, 9, 'PROCESSING', NULL),
       ('9dea401f-635b-4cbb-8f91-0dd4481e00a1', 'marin.florea@mail.com', 12101.32, '2022-02-27 06:05', 'CARD', false,
        0.0, 8, 'SENT', NULL),
       ('caffb3ac-c7fd-43b2-97cc-f4b9ef1b3538', 'ovidiu.iordache@mail.com', 17358.38, '2022-02-26 21:31', 'CASH', true,
        16.42, 11, 'RECEIVED', NULL),
       ('b4a82dbf-da3f-44d7-9161-314e14a518b4', 'beryx.dumitrescu@mail.com', 11036.35, '2022-02-26 09:37', 'CARD',
        false, 0.0, 17, 'RETURNED', 'Produsul este deteriorat'),
       ('9d4438d5-288a-4ddd-a281-c98516717ed1', 'sanda.dimir@mail.com', 2337.64, '2022-02-25 06:16', 'CASH', true,
        41.53, 18, 'OUT_OF_STOCK', NULL),
       ('6b2e0841-2e08-4c27-acee-e8eb4aee1562', 'victor.breban@mail.com', 16180.41, '2022-02-23 17:17', 'CASH', false,
        0.0, 9, 'PROCESSING', NULL),
       ('867e3413-3587-47e3-9860-f7af28e11240', 'sandu.lupul@mail.com', 5795.63, '2022-02-23 10:20', 'CASH', true,
        24.86, 10, 'RECEIVED', NULL),
       ('3f5de2d2-8c65-4065-8dae-bea5d6d07493', 'bogdan.albescu@mail.com', 9779.6, '2022-02-23 06:29', 'CARD', false,
        0.0, 1, 'RECEIVED', NULL),
       ('774c1320-4a7b-4398-b512-df432fc5c2ed', 'remus.tanase@mail.com', 2169.88, '2022-02-22 05:38', 'CARD', true,
        57.8, 12, 'RECEIVED', NULL),
       ('228d6c22-9e60-4513-8517-c7bb0f8bd6cf', 'abel.muresan@mail.com', 4185.63, '2022-02-21 07:13', 'CARD', true,
        24.54, 18, 'COMPLETED', NULL),
       ('81522db7-1e8f-4d07-93f2-772c9681bcf5', 'andrei.giurescu@mail.com', 5041.01, '2022-02-19 06:49', 'CASH', true,
        33.11, 15, 'COMPLETED', NULL),
       ('4bbe3cb2-cbf5-4b8d-8b3b-975ab4377066', 'laurentiu.lazarescu@mail.com', 9412.08, '2022-02-18 11:29', 'CARD',
        false, 0.0, 16, 'PROCESSING', NULL),
       ('6d4ce767-243f-4de7-9dcc-723740a78ce7', 'grigore.gogean@mail.com', 4028.73, '2022-02-17 01:08', 'CARD', false,
        0.0, 6, 'RETURNED', 'Produsul nu este aferent calitatii descrise'),
       ('888810d4-e94d-47f8-a513-a687969fa6a3', 'ilie.dragan@mail.com', 8092.29, '2022-02-15 12:38', 'CARD', true,
        16.77, 1, 'COMPLETED', NULL),
       ('ba2c6ce0-671e-43e1-afae-ef0ae3b2675c', 'gavril.vasiliu@mail.com', 8030.18, '2022-02-14 22:04', 'CARD', false,
        0.0, 14, 'RETURNED', 'Produsul nu este aferent calitatii descrise'),
       ('02a1ce15-3426-4e9a-bb53-0436e469e48f', 'emil.apostol@mail.com', 14627.0, '2022-02-14 15:52', 'CASH', false,
        0.0, 13, 'RECEIVED', NULL),
       ('7e24dd35-3b67-475b-811c-5e928ed3ceba', 'geza.vaduva@mail.com', 17978.84, '2022-02-14 13:28', 'CASH', true,
        18.51, 13, 'PROCESSING', NULL),
       ('22ace30b-7c7c-4a52-be32-b540ac9dd53e', 'flaviu.cretu@mail.com', 3929.04, '2022-02-12 15:25', 'CARD', false,
        0.0, 3, 'PROCESSING', NULL),
       ('468f9929-4101-4a13-a8ec-f22c75236d90', 'ion.groza@mail.com', 14914.33, '2022-02-12 03:56', 'CARD', true, 21.71,
        15, 'PROCESSING', NULL),
       ('1188afbe-98de-459c-a207-81aa513290be', 'grigore.gogean@mail.com', 16597.31, '2022-02-10 23:10', 'CASH', true,
        43.49, 13, 'RECEIVED', NULL),
       ('96164cb8-aeb3-4745-aee4-8a79c5fa48ba', 'darius.tudor@mail.com', 3894.32, '2022-02-10 21:16', 'CARD', true,
        34.57, 7, 'SENT', NULL)