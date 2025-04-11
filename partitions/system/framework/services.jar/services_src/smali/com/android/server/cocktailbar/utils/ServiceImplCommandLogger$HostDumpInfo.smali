.class public Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
.super Ljava/lang/Object;
.source "ServiceImplCommandLogger.java"


# instance fields
.field public mCommandHistory:Ljava/util/ArrayList;

.field public mEndTime:Ljava/lang/String;

.field public mStratTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>()V

    return-void
.end method
