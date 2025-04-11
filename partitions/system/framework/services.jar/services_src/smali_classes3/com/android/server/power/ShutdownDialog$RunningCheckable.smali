.class public abstract Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.super Ljava/lang/Thread;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public running:Z

.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$RunningCheckable-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .locals 0

    .line 566
    iget-boolean p0, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    return p0
.end method
