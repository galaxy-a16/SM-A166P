.class public abstract Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;
.super Ljava/lang/Object;
.source "ScpmController.java"


# instance fields
.field public final mAppId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mReceiverPackageName:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
