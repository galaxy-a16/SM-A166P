.class public final Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field public mTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 9125
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    return-void
.end method
