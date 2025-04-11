.class public Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;
.super Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;
.source "DemuxResource.java"


# instance fields
.field public mFilterTypes:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFilterTypes(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->mFilterTypes:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/tv/tunerresourcemanager/DemuxResource;
    .locals 2

    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/tunerresourcemanager/DemuxResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;Lcom/android/server/tv/tunerresourcemanager/DemuxResource-IA;)V

    return-object v0
.end method

.method public filterTypes(I)Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;
    .locals 0

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/DemuxResource$Builder;->mFilterTypes:I

    return-object p0
.end method
