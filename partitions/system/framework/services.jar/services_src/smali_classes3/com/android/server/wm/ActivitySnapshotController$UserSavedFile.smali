.class public Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
.super Ljava/lang/Object;
.source "ActivitySnapshotController.java"


# instance fields
.field public mFileId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    iput p2, p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    return-void
.end method
