.class public final Lcom/android/server/companion/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# instance fields
.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static synthetic $r8$lambda$-59z3OcSJJpt3JzxMdkpc4wBV4w(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->lambda$writePreviouslyUsedIdsForPackage$2(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ajn8ESQxjhTZuM3r7tHEXDXvC5w(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PersistentDataStore;->lambda$persistStateToFileLocked$0(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kN65qEzcsM2AO8ej0M9AYhpWm4s(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/PersistentDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static createAssociationInfoNoThrow(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZZJJI)Landroid/companion/AssociationInfo;
    .locals 17

    .line 576
    :try_start_0
    new-instance v16, Landroid/companion/AssociationInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move/from16 v15, p13

    invoke-direct/range {v0 .. v15}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZJJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v16, 0x0

    :goto_0
    return-object v16
.end method

.method public static getBaseLegacyStorageFileForUser(I)Ljava/io/File;
    .locals 2

    .line 394
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "companion_device_manager_associations.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$getStorageFileForUser$1(ILjava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 0

    const-string p1, "companion_device_manager.xml"

    .line 390
    invoke-static {p0, p1}, Lcom/android/server/companion/DataStoreUtils;->createStorageFileForUser(ILjava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$persistStateToFileLocked$0(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V
    .locals 4

    .line 364
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    .line 365
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 368
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "state"

    .line 369
    invoke-interface {p2, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "persistence-version"

    .line 370
    invoke-static {p2, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 373
    invoke-static {p2, p0}, Lcom/android/server/companion/PersistentDataStore;->writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V

    .line 374
    invoke-static {p2, p1}, Lcom/android/server/companion/PersistentDataStore;->writePreviouslyUsedIds(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V

    .line 376
    invoke-interface {p2, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static synthetic lambda$writePreviouslyUsedIdsForPackage$2(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "id"

    .line 550
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 551
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 552
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;IILjava/util/Collection;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "association"

    .line 421
    invoke-static {v0, v1}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 423
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "device"

    .line 424
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "profile"

    .line 428
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "notify_device_nearby"

    .line 429
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    const-string/jumbo v2, "time_approved"

    const-wide/16 v3, 0x0

    .line 430
    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 432
    new-instance v0, Landroid/companion/AssociationInfo;

    .line 433
    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x0

    move-object v2, v0

    move/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v2 .. v17}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZJJI)V

    move-object/from16 v1, p3

    .line 432
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/util/Collection;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "association"

    .line 454
    invoke-static {v0, v1}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v1, "id"

    .line 456
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, "profile"

    .line 457
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "package"

    .line 458
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "mac_address"

    .line 460
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-static {v1}, Lcom/android/server/companion/PersistentDataStore;->stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v5

    const-string v1, "display_name"

    .line 461
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "self_managed"

    .line 462
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v1, "notify_device_nearby"

    .line 463
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v1, "revoked"

    const/4 v3, 0x0

    .line 464
    invoke-static {v0, v1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v1, "time_approved"

    const-wide/16 v11, 0x0

    .line 465
    invoke-static {v0, v1, v11, v12}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v1, "last_time_connected"

    const-wide v13, 0x7fffffffffffffffL

    .line 466
    invoke-static {v0, v1, v13, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const-string/jumbo v1, "system_data_sync_flags"

    .line 468
    invoke-static {v0, v1, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    move/from16 v3, p1

    .line 471
    invoke-static/range {v2 .. v15}, Lcom/android/server/companion/PersistentDataStore;->createAssociationInfoNoThrow(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZZJJI)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object/from16 v1, p2

    .line 475
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/util/Collection;)V
    .locals 3

    const-string v0, "associations"

    .line 400
    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 408
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v1

    .line 410
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 411
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "association"

    .line 412
    invoke-static {p0, v2}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 414
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/companion/PersistentDataStore;->readAssociationV0(Lcom/android/modules/utils/TypedXmlPullParser;IILjava/util/Collection;)V

    move v1, v2

    goto :goto_0
.end method

.method public static readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/util/Collection;)V
    .locals 2

    const-string v0, "associations"

    .line 441
    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 444
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 445
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "association"

    .line 446
    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PersistentDataStore;->readAssociationV1(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/util/Collection;)V

    goto :goto_0
.end method

.method public static readPreviouslyUsedIdsV1(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    .locals 5

    const-string/jumbo v0, "previously-used-ids"

    .line 481
    invoke-static {p0, v0}, Lcom/android/server/companion/PersistentDataStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 484
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 485
    invoke-static {p0, v0}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "package"

    .line 486
    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "package_name"

    .line 488
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 492
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 493
    invoke-static {p0, v1}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 501
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v4, "id"

    .line 494
    invoke-static {p0, v4}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 496
    :cond_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextToken()I

    .line 497
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 498
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0

    .line 558
    invoke-static {p0, p1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 559
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Should be at the start of \"associations\" tag"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stringToMacAddress(Ljava/lang/String;)Landroid/net/MacAddress;
    .locals 0

    if-eqz p0, :cond_0

    .line 564
    invoke-static {p0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "association"

    .line 516
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 518
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    const-string v3, "id"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v2, "profile"

    .line 519
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "package"

    .line 520
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "mac_address"

    .line 521
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "display_name"

    .line 522
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "self_managed"

    .line 523
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v2, "notify_device_nearby"

    .line 525
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    .line 524
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v2, "revoked"

    .line 527
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v3

    .line 526
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v2, "time_approved"

    .line 528
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v3

    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 530
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v4, "last_time_connected"

    .line 529
    invoke-static {p0, v4, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v2, "system_data_sync_flags"

    .line 531
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 533
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAssociations(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Collection;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "associations"

    .line 507
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 508
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 509
    invoke-static {p0, v2}, Lcom/android/server/companion/PersistentDataStore;->writeAssociation(Lorg/xmlpull/v1/XmlSerializer;Landroid/companion/AssociationInfo;)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePreviouslyUsedIds(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/Map;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "previously-used-ids"

    .line 538
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 539
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 540
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p0, v3, v2}, Lcom/android/server/companion/PersistentDataStore;->writePreviouslyUsedIdsForPackage(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 542
    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePreviouslyUsedIdsForPackage(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    .line 548
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    const-string/jumbo v2, "package_name"

    .line 549
    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 550
    new-instance p1, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda2;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p2, p1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 553
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    .line 389
    iget-object p0, p0, Lcom/android/server/companion/PersistentDataStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public persistStateForUser(ILjava/util/Collection;Ljava/util/Map;)V
    .locals 3

    const-string v0, "CompanionDevice_PersistentDataStore"

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object p1

    .line 321
    monitor-enter p1

    .line 322
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/PersistentDataStore;->persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V

    .line 323
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 0

    .line 363
    new-instance p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2, p3}, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;Ljava/util/Map;)V

    invoke-static {p1, p0}, Lcom/android/server/companion/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public readStateForUser(ILjava/util/Collection;Ljava/util/Map;)V
    .locals 8

    const-string v0, "CompanionDevice_PersistentDataStore"

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading associations for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/companion/PersistentDataStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 253
    monitor-enter v0

    .line 257
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    invoke-static {p1}, Lcom/android/server/companion/PersistentDataStore;->getBaseLegacyStorageFileForUser(I)Ljava/io/File;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    monitor-exit v0

    return-void

    .line 267
    :cond_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const-string v3, "associations"

    move-object v4, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "state"

    const/4 v1, 0x0

    move-object v4, v0

    :goto_0
    move-object v5, v3

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 275
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/PersistentDataStore;->readStateFromFileLocked(ILandroid/util/AtomicFile;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)I

    move-result p1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    if-ge p1, v2, :cond_3

    .line 290
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/companion/PersistentDataStore;->persistStateToFileLocked(Landroid/util/AtomicFile;Ljava/util/Collection;Ljava/util/Map;)V

    if-eqz v1, :cond_3

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 298
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readStateForUsers(Ljava/util/List;Ljava/util/Set;Landroid/util/SparseArray;)V
    .locals 9

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 201
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 203
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 207
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 208
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/companion/PersistentDataStore;->readStateForUser(ILjava/util/Collection;Ljava/util/Map;)V

    .line 212
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v3

    .line 213
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getLastAssociationIdForUser(I)I

    move-result v4

    .line 214
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    .line 215
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v6

    if-lt v6, v3, :cond_1

    if-le v6, v4, :cond_0

    .line 217
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong association ID assignment: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Association belongs to u"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and thus its ID should be within ["

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] range."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CompanionDevice_PersistentDataStore"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final readStateFromFileLocked(ILandroid/util/AtomicFile;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)I
    .locals 2

    .line 329
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :try_start_1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    .line 332
    invoke-static {p2, p3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v0, "persistence-version"

    const/4 v1, 0x0

    .line 333
    invoke-static {p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    const-string v1, "associations"

    .line 341
    invoke-static {p2, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    invoke-static {p2, p1, p4}, Lcom/android/server/companion/PersistentDataStore;->readAssociationsV1(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/util/Collection;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "previously-used-ids"

    .line 343
    invoke-static {p2, v1}, Lcom/android/server/companion/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    invoke-static {p2, p5}, Lcom/android/server/companion/PersistentDataStore;->readPreviouslyUsedIdsV1(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {p2, p3}, Lcom/android/server/companion/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 336
    :cond_3
    invoke-static {p2, p1, p4}, Lcom/android/server/companion/PersistentDataStore;->readAssociationsV0(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p0, :cond_4

    .line 352
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 329
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "CompanionDevice_PersistentDataStore"

    const-string p2, "Error while reading associations file"

    .line 353
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method
