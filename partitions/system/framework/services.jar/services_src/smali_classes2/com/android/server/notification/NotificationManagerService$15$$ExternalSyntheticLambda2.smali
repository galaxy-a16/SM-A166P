.class public final synthetic Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$15;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$15;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$15;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$15;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/NotificationManagerService$15;->$r8$lambda$-f77O5fy3hlt4x785_E5-F4ULIg(Lcom/android/server/notification/NotificationManagerService$15;ILjava/lang/String;)V

    return-void
.end method
