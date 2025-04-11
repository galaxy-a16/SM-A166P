.class public final synthetic Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController$AlarmReceiver;->$r8$lambda$TVvdkAqGqHf3zu89pMst8zlM2AM(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
