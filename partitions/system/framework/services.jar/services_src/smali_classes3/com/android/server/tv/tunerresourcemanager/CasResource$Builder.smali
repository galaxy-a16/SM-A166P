.class public Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
.super Ljava/lang/Object;
.source "CasResource.java"


# instance fields
.field public mMaxSessionNum:I

.field public mSystemId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSystemId(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mSystemId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .locals 1

    .line 136
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    invoke-direct {v0, p0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    return-object v0
.end method

.method public maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    .locals 0

    .line 126
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->mMaxSessionNum:I

    return-object p0
.end method
