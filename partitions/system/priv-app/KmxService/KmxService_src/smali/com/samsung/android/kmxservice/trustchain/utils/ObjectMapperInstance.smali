.class public Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
