.class public final synthetic Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationHistoryJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationHistoryJobService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationHistoryJobService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationHistoryJobService;->$r8$lambda$vlBzZVX70fHO2e7RkCfw1Q1VqoI(Lcom/android/server/notification/NotificationHistoryJobService;Landroid/app/job/JobParameters;)V

    return-void
.end method
