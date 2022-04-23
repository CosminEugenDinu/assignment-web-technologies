CREATE TABLE `orders`
(
    `id`                     varchar(36)                               NOT NULL,
    `client`                 varchar(200)                              NOT NULL,
    `total`                  decimal(13, 2)                            NOT NULL,
    `date`                   datetime                                  NOT NULL,
    `payment`                enum ('cash', 'card')                     NOT NULL,
    `workmanship`            boolean                                   NOT NULL,
    `workmanship_percentage` decimal(2, 2)                             NOT NULL,
    `quantity`               int(1000)                                 NOT NULL,
    `status`                 enum ('received',
        'processing', 'sent', 'completed', 'out_of_stock', 'returned') NOT NULL,
    `return_reason`          varchar(4000)
);

INSERT INTO `orders` (`id`, `client`, `total`, `date`, `payment`, `workmanship`, `workmanship_percentage`, `quantity`,
                      `status`, `return_reason`)
VALUES (1, 'ashish', 'raturi', 'ashishraturi@gmail.com', 'bca', true, 'dehradun', 'uttarakhand'),
       (2, 'sumit', 'arora', 'sumitarora@gmail.com', 'bca', 2013, 'ludhiana', 'punjab'),

       ('6aa206a3-f71d-4f00-811b-5576c4010f0b', 'gavril.vasiliu@mail.com', 11397.2, '2022-04-22 14:53', 'CARD', false, '-', 15, 'OUT_OF_STOCK', 'NULL'),
       ('51975e5b-9b9d-4289-8f61-4a80ccebe192', 'tudor.niculescu@mail.com', 11843.0, '2022-04-17 06:25', 'CARD', true, 35.89, 10, 'PROCESSING', 'NULL'), ('4ad5b3a2-47be-4dcb-acc3-fffb8833eb0a', 'simion.mondragon@mail.com', 8616.53, '2022-04-15 07:21', 'CARD', true, 22.07, 2, 'SENT', 'NULL'), ('e7e35346-f24a-4a1e-a761-4185e7886877', 'iuliu.cojocar@mail.com', 6731.08, '2022-04-12 23:07', 'CASH', true, 57.41, 5, 'PROCESSING', 'NULL'), ('5ba45040-5d6e-4b7f-b95f-00c92203551b', 'codrin.raducan@mail.com', 2512.69, '2022-04-09 19:46', 'CARD', false, -, 15, 'SENT', 'NULL'), ('ffcfd2a8-1f6e-45a2-bc99-359be3f588ae', 'dragos.cantacuzino@mail.com', 1309.17, '2022-04-08 12:21', 'CARD', false, -, 5, 'RETURNED', 'Nu am primit produsul comandat'), ('69bec642-5b1a-41f8-8ae6-a1e89ebe4f91', 'dragomir.cutov@mail.com', 18600.6, '2022-04-08 00:11', 'CARD', false, -, 2, 'PROCESSING', 'NULL'), ('d251fce8-cc2b-4d62-b83c-d20b70024589', 'sanda.ciora@mail.com', 16533.35, '2022-04-07 15:49', 'CASH', true, 43.57, 19, 'PROCESSING', 'NULL'), ('e0ee2624-114e-4591-a1c9-c5eb9d79c9b1', 'iuliu.cristea@mail.com', 7545.33, '2022-04-04 21:15', 'CASH', false, -, 16, 'RETURNED', 'Produsul nu este aferent calitatii descrise'), ('31646ad9-438f-4ab3-95dd-61ba15c43978', 'petar.minea@mail.com', 3778.58, '2022-04-03 02:30', 'CARD', false, -, 6, 'OUT_OF_STOCK', 'NULL'), ('c2422cf8-0dd6-4913-ab63-e02a75db004a', 'danut.baicu@mail.com', 10819.66, '2022-04-02 15:24', 'CARD', true, 14.81, 7, 'RETURNED', 'Produsul nu contine instructiuni de utilizare'), ('be001a2a-42d7-4c57-9e8b-797a3e057b8a', 'valentin.ungureanu@mail.com', 14535.43, '2022-04-01 14:18', 'CASH', true, 55.8, 18, 'RETURNED', 'Produsul nu este aferent calitatii descrise'), ('4b74b269-044d-4ffd-bff9-41efcfd35bb4', 'geza.vaduva@mail.com', 6550.39, '2022-04-01 08:43', 'CASH', true, 58.75, 4, 'COMPLETED', 'NULL'), ('0f5b4b24-fa32-4c7d-bab5-5d9979761347', 'sanda.radu@mail.com', 19335.44, '2022-03-30 05:36', 'CASH', true, 22.96, 12, 'OUT_OF_STOCK', 'NULL'), ('2457a180-2555-4934-a9fe-d98dc2fb8104', 'ovidiu.iordache@mail.com', 6800.55, '2022-03-25 16:52', 'CASH', false, -, 2, 'OUT_OF_STOCK', 'NULL'), ('6b4c0874-30a8-41f6-b60b-390d838491a4', 'stefan.proca@mail.com', 7362.78, '2022-03-23 12:43', 'CASH', true, 50.92, 13, 'SENT', 'NULL'), ('04ddd57b-67e6-419c-8d0f-3ecc1bae137e', 'veaceslav.florea@mail.com', 19047.7, '2022-03-21 22:16', 'CASH', true, 42.78, 7, 'OUT_OF_STOCK', 'NULL'), ('129d939b-240c-43f0-b7f1-465a2da40be2', 'vali.prunea@mail.com', 1489.18, '2022-03-21 21:57', 'CARD', false, -, 19, 'RETURNED', 'Produsul este deteriorat'), ('e12badbc-4df2-436a-9d18-0289eacdb32a', 'victor.breban@mail.com', 15589.46, '2022-03-20 14:21', 'CASH', false, -, 5, 'RECEIVED', 'NULL'), ('b05d1445-a1a7-4000-9149-f432fcd1e10d', 'darius.tudor@mail.com', 13828.25, '2022-03-19 10:08', 'CARD', true, 34.07, 5, 'RETURNED', 'Produsul este deteriorat'), ('69ce018e-ddcc-48f4-84e0-061cda7203a8', 'ion.groza@mail.com', 19937.94, '2022-03-18 16:40', 'CASH', false, -, 17, 'SENT', 'NULL'), ('6d46b6ef-a6d1-4d54-a3d0-a77c7e7a6ba6', 'ionache.enache@mail.com', 8301.09, '2022-03-14 16:35', 'CASH', false, -, 15, 'COMPLETED', 'NULL'), ('8a6f6b0d-b16a-47a5-bd4a-eb484f2df814', 'sandu.lupul@mail.com', 8026.9, '2022-03-13 07:56', 'CASH', true, 43.92, 5, 'OUT_OF_STOCK', 'NULL'), ('f723b082-8b8b-40ca-8b36-f899ccc483c7', 'costel.raducioiu@mail.com', 6235.93, '2022-03-11 20:43', 'CARD', false, -, 11, 'RECEIVED', 'NULL'), ('2f2f781c-6b70-4e3b-bf05-1c2da5f5cdc7', 'danut.ilica@mail.com', 3618.22, '2022-03-10 08:36', 'CASH', true, 8.29, 8, 'COMPLETED', 'NULL'), ('b124cd70-4bb8-4222-b889-9603bb4c941e', 'denis.lucescu@mail.com', 13351.53, '2022-03-10 06:49', 'CARD', true, 24.76, 7, 'OUT_OF_STOCK', 'NULL'), ('7b773450-cd01-4f0a-a8b6-692f43a54a4e', 'liviu.anghelescu@mail.com', 11704.96, '2022-03-09 15:11', 'CARD', false, -, 11, 'OUT_OF_STOCK', 'NULL'), ('bb950b58-a6b7-416a-a429-1b357d95f5f1', 'sanda.dimir@mail.com', 19113.3, '2022-03-07 18:46', 'CARD', true, 30.94, 12, 'COMPLETED', 'NULL'), ('f026ee10-9644-4e49-89ea-166c3016064f', 'claudiu.dumitrescu@mail.com', 10606.27, '2022-03-07 13:54', 'CASH', true, 7.98, 5, 'COMPLETED', 'NULL'), ('c4226a89-4d0f-47e0-8b2d-1cb2b3c7c3ec', 'vali.macedonski@mail.com', 9376.85, '2022-03-07 13:19', 'CARD', true, 32.79, 19, 'RECEIVED', 'NULL'), ('25b3c566-7a5f-41b2-9ce0-de39fae9bfaa', 'marin.florea@mail.com', 1589.21, '2022-03-03 18:21', 'CARD', true, 53.86, 5, 'PROCESSING', 'NULL'), ('e93cef06-2e7b-4e00-8efe-78c396796d69', 'vasile.movila@mail.com', 16913.73, '2022-03-02 11:12', 'CARD', true, 30.72, 1, 'RECEIVED', 'NULL'), ('aaf5c5a6-a0f2-4fe8-953e-260a9ea7cd9a', 'costea.lupul@mail.com', 19843.29, '2022-02-28 16:25', 'CASH', true, 39.51, 19, 'COMPLETED', 'NULL'), ('0aa5509c-7283-4d52-85f5-2dc520c8bd79', 'matei.lupescu@mail.com', 14181.06, '2022-02-28 11:45', 'CASH', true, 35.41, 14, 'SENT', 'NULL'), ('367a9179-a82e-4783-8fa8-0d162a053a99', 'iulio.iacobescu@mail.com', 18481.74, '2022-02-27 13:31', 'CARD', false, -, 11, 'RETURNED', 'Produsul nu este aferent calitatii descrise'), ('9a3e9429-164e-4d97-8e13-90c39a712ad0', 'marius.vlaicu@mail.com', 15080.13, '2022-02-27 01:39', 'CASH', true, 12.05, 1, 'PROCESSING', 'NULL'), ('d347d8f9-35f6-4d3a-82f2-c7142006dc08', 'liviu.vasiliu@mail.com', 14060.44, '2022-02-19 14:35', 'CASH', true, 19.77, 3, 'RECEIVED', 'NULL'), ('31edcfb9-ac84-45e0-acaa-034dcfa707cb', 'robert.ene@mail.com', 19058.88, '2022-02-17 20:21', 'CARD', true, 18.79, 7, 'OUT_OF_STOCK', 'NULL'), ('bf10eae0-db3a-46fd-80d0-7715c27b71a8', 'teodor.silivasi@mail.com', 12300.09, '2022-02-11 11:09', 'CASH', true, 33.53, 4, 'RECEIVED', 'NULL'), ('48446df4-bbf6-4c26-be83-a9928c6cbb13', 'ilie.dragan@mail.com', 18805.76, '2022-02-10 09:07', 'CARD', true, 37.46, 18, 'RECEIVED', 'NULL')


95fa23a9-4159-4fb0-88ad-9e085c158b3d,
0650af02-f829-45a5-a81a-7c769b3ae4e4,
b7dd9c1f-9a18-4a01-ad57-50f8d86c7274,
12e4ce50-affc-48a3-856c-ef2a854b84e5,
09e8593c-c2e7-45b0-be90-9be9758561e1,
9a0a9a06-5db7-4617-9d29-4a32b8b91998,
b911d754-f889-4c64-a1af-108962ef0a42,
b02a4903-478c-404b-ac1e-11b81581618a,
63c40cae-4747-4b92-9a9e-b7d8c5232bb7,
39458634-10a3-44fa-b8dd-49b2da46ee13,
ebb30507-b37a-4758-ad9d-cf5dd6faaeba,
0e16fd1a-d201-4eeb-8f0a-da92ef080eee,
69fc4279-a5f1-4f9a-a873-fb594d473819,
5971341b-a9cb-47ef-ac9d-7fbb833784f3,
56f8a53a-48ac-4dd4-8089-2ec5e4a75bfb,
0d258546-81bc-4b10-859b-d6a1408c5550,
304f9346-b2d3-457e-a9b6-a620741a6513,
aaf46e71-cb27-4059-bca8-52470be1fe15,
7f697a51-5e69-42c4-b1b4-7c47d04e181a,
4324aabb-23bf-493e-be9f-be22c4c166f6,
668449f9-41a5-42ab-b751-a93f74c491c8,
1c8b3ff7-b5b3-4372-9f3e-5362b6402eb4,
da75fcee-c019-4b41-afb0-95cf10d05b3c,
d7c12cb3-abee-4449-8cb9-aa022b942724,
7806c4a1-789d-49ad-938e-0cb1b6fd06f6,
97462668-2a99-4525-b392-db6073c6d9e3,
556bd22e-cedf-41eb-a02a-fe92c8ce2e71,
d8af764a-0676-4ece-87c1-1ef2c1e17009,
8584fb62-2ced-433e-9090-17460d313a63,
318a00fb-0096-423f-b713-f781a7c70f2f,
82c81031-9f75-4ae5-90da-9958da420437,
5d3c9042-0c59-43df-864a-9442e318067f,
a15fdff9-a00f-4abb-8c06-f332863aa310,
e06dfe01-13c2-4022-b85d-6cd0b5bf9291,
6d5f29fb-c711-4a23-9dc2-be8c5441a594,
b018dfa3-391b-4040-bfbd-f6ffafee7b65,
fce3ae16-ff44-4fb7-ab7b-9293d2823f63,
eaceb9c7-3789-41b2-8f5c-2ba7555ac8cf,
29f2f3bd-c78b-45fc-9463-6df2281c62d3,
25d3bd0a-2f27-4df2-bdf4-062d48fb62d3,