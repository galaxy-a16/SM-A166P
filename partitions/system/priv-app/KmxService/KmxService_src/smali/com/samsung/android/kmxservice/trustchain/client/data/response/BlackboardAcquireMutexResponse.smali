.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardAcquireMutexResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private expiredAt:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "expiredAt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiredAt()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "expiredAt"
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardAcquireMutexResponse;->expiredAt:J

    return-wide v0
.end method
