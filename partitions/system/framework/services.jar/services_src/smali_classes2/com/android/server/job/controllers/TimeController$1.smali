.class public Lcom/android/server/job/controllers/TimeController$1;
.super Ljava/lang/Object;
.source "TimeController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .line 404
    invoke-static {}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Time"

    const-string v1, "Deadline-expired alarm fired"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    return-void
.end method
