.class public Lcom/android/server/timedetector/NetworkTimeUpdateService$1;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"

# interfaces
.implements Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

.field public final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field public final synthetic val$pendingPollIntent:Landroid/app/PendingIntent;

.field public final synthetic val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/app/AlarmManager;Landroid/app/PendingIntent;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iput-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$pendingPollIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scheduleNextRefresh(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$pendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$pendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public submitSuggestion(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorInternal;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method
