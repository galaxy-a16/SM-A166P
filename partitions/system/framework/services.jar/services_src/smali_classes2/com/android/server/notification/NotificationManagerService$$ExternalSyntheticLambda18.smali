.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

.field public final synthetic f$3:Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$2:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$3:Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$2:Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;->f$3:Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/notification/NotificationManagerService;->$r8$lambda$yMDOS2SuEmYp2HjM1eWh1O8QGkk(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    return-void
.end method
