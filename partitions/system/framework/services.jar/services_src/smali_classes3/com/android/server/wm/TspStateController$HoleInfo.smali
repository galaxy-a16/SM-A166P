.class public final Lcom/android/server/wm/TspStateController$HoleInfo;
.super Ljava/lang/Object;
.source "TspStateController.java"


# instance fields
.field public direction:I

.field public endY:I

.field public startY:I

.field public final synthetic this$0:Lcom/android/server/wm/TspStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TspStateController;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$HoleInfo;->this$0:Lcom/android/server/wm/TspStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/TspStateController$HoleInfo;->direction:I

    iput p3, p0, Lcom/android/server/wm/TspStateController$HoleInfo;->startY:I

    iput p4, p0, Lcom/android/server/wm/TspStateController$HoleInfo;->endY:I

    return-void
.end method
