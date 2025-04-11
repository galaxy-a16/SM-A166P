.class public Lcom/android/server/wm/AsyncRotationController$Operation;
.super Ljava/lang/Object;
.source "AsyncRotationController.java"


# instance fields
.field public final mAction:I

.field public mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mIsCompletionPending:Z

.field public mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    iput p1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    return-void
.end method
