.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/NotificationManagerService;->$r8$lambda$GXt9fwvI25u3Z19mutm7ASbbvsc(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object p0

    return-object p0
.end method
