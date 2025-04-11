.class public Lcom/samsung/android/server/util/CoreLogger$Builder;
.super Ljava/lang/Object;
.source "CoreLogger.java"


# instance fields
.field public mBufferOverflowAllowed:Z

.field public mBufferSize:I

.field public mDumpTitle:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mUseTimeline:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/samsung/android/server/util/CoreLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferOverflowAllowed:Z

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mUseTimeline:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/util/CoreLogger$Builder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/samsung/android/server/util/CoreLogger$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/util/CoreLogger;
    .locals 8

    .line 51
    new-instance v7, Lcom/samsung/android/server/util/CoreLogger;

    iget-object v1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferSize:I

    iget-boolean v4, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferOverflowAllowed:Z

    iget-boolean v5, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mUseTimeline:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/util/CoreLogger;-><init>(Ljava/lang/String;Ljava/lang/String;IZZLcom/samsung/android/server/util/CoreLogger-IA;)V

    return-object v7
.end method

.method public setBufferOverflowAllowed(Z)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferOverflowAllowed:Z

    return-object p0
.end method

.method public setBufferSize(I)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .locals 0

    .line 66
    iput p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferSize:I

    return-object p0
.end method

.method public setDumpTitle(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setUseTimeline(Z)Lcom/samsung/android/server/util/CoreLogger$Builder;
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mUseTimeline:Z

    return-object p0
.end method
