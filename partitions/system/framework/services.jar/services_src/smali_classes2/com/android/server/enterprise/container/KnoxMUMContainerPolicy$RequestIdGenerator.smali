.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# instance fields
.field public fraction:I

.field public random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 791
    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    .line 792
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public getNextContainerRequestId()I
    .locals 3

    .line 796
    iget v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 797
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    .line 799
    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->fraction:I

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->random:Ljava/util/Random;

    const v1, 0x186a0

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method
