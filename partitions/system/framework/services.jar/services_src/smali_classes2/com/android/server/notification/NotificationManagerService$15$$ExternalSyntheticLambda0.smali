.class public final synthetic Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$15;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$15;ILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$15;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$15;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$15$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/NotificationManagerService$15;->$r8$lambda$iXjE8VkFuKh7iSt5ITt3QjGX6aQ(Lcom/android/server/notification/NotificationManagerService$15;ILandroid/net/Uri;)V

    return-void
.end method
