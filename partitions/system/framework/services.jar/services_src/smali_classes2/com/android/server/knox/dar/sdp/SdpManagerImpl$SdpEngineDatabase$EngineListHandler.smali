.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;


# direct methods
.method public static bridge synthetic -$$Nest$mgetEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEngineListLocked(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)V
    .locals 0

    .line 3758
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;)V

    return-void
.end method


# virtual methods
.method public final getEngineListLocked()Landroid/util/SparseArray;
    .locals 13

    .line 3858
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    move-object v3, v1

    :goto_0
    add-int/lit8 v4, v2, -0x1

    const-string v5, "SdpManagerImpl"

    if-lez v2, :cond_a

    .line 3864
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3868
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile()Landroid/util/AtomicFile;

    move-result-object v2

    .line 3869
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 3871
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 3872
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v6, "UTF-8"

    .line 3873
    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3877
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    const/4 v8, 0x1

    move-object v10, v7

    move v9, v8

    :goto_1
    if-eq v6, v8, :cond_5

    const/4 v11, 0x2

    if-eq v6, v11, :cond_0

    goto :goto_3

    .line 3884
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "engine"

    .line 3885
    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "alias"

    const/4 v11, 0x0

    .line 3886
    invoke-interface {v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "id"

    .line 3887
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3888
    invoke-interface {v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 3890
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 3889
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_1

    .line 3892
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    move v11, v8

    :cond_1
    move v9, v11

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    :goto_2
    if-eqz v9, :cond_3

    .line 3895
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move-object v10, v7

    goto :goto_3

    .line 3899
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "Suspicious of damaged file..."

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3908
    :cond_4
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 3918
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_6
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v2

    .line 3912
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3913
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v3, :cond_8

    .line 3918
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_8
    move v2, v4

    goto/16 :goto_0

    :goto_4
    if-eqz v3, :cond_9

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3921
    :catch_3
    :cond_9
    throw p0

    :cond_a
    const-string p0, "getEngineList :: No engine found"

    .line 3923
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getEngineListXmlFile()Landroid/util/AtomicFile;
    .locals 1

    const/4 v0, 0x0

    .line 3770
    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/AtomicFile;

    move-result-object p0

    return-object p0
.end method

.method public final getEngineListXmlFile(I)Landroid/util/AtomicFile;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p1, 0x0

    .line 3778
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3779
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "SdpManagerImpl"

    const-string p1, "Failed to get engine list due to non-existence..."

    .line 3781
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 3784
    :cond_2
    :goto_0
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p1
.end method

.method public final updateEngineListLocked()I
    .locals 15

    const-string v0, "engine"

    const-string v1, "engine_list"

    const/16 v2, -0x63

    const/4 v3, 0x1

    .line 3794
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/AtomicFile;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 3800
    iget-object v5, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v5, v5, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v5}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 3801
    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    return v6

    :cond_0
    const/4 v5, 0x0

    .line 3807
    :try_start_1
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3808
    :try_start_2
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3810
    :try_start_3
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v10, "UTF-8"

    .line 3811
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3812
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 3813
    invoke-interface {v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3818
    invoke-interface {v9, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3819
    iget-object v10, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v10, v10, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v10}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v11, v6

    :goto_0
    if-ge v11, v10, :cond_1

    .line 3820
    iget-object v12, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v12}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 3821
    iget-object v13, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object v13, v13, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v13}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmSdpEngineMap(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Landroid/util/SparseArray;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 3824
    invoke-interface {v9, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "alias"

    .line 3826
    invoke-virtual {v13}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "id"

    .line 3827
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v5, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3829
    invoke-interface {v9, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3834
    :cond_1
    invoke-interface {v9, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3835
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3836
    invoke-virtual {v4, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3849
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v5

    :goto_1
    move-object v5, v7

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v5

    .line 3838
    :goto_2
    :try_start_5
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpEngineDatabase;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    const-string v1, "SdpManagerImpl"

    const-string v3, "Failed to update engine list..."

    invoke-static {p0, v1, v0, v3}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mrecordException(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 3840
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_2

    .line 3843
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    if-eqz v8, :cond_3

    .line 3849
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_3
    move v3, v6

    :catch_4
    :goto_3
    if-eqz v3, :cond_4

    move v2, v6

    :cond_4
    return v2

    :catchall_1
    move-exception p0

    move-object v5, v8

    :goto_4
    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3852
    :catch_5
    :cond_5
    throw p0

    :catch_6
    move-exception p0

    .line 3796
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2
.end method
