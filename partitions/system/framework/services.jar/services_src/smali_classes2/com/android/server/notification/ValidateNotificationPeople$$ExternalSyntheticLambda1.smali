.class public final synthetic Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iput p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$3:I

    iget-boolean p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;->f$4:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/notification/ValidateNotificationPeople;->$r8$lambda$1RBhPWdrHER-2uVWMECDS9e6X1s(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;IZ)V

    return-void
.end method
