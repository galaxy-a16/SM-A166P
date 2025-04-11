.class public final synthetic Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$11;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$3:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda2;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/notification/NotificationManagerService$11;->$r8$lambda$Ac7eY1SlHQEGm0wRnFQa3MtqZXQ(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
