.class public Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
.super Ljava/lang/Object;
.source "ActivitySnapshotController.java"


# instance fields
.field public mFileId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput p1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    .line 508
    iput p2, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    return-void
.end method
