.class public final synthetic Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionApplicationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/companion/CompanionDeviceServiceConnector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionApplicationController;

    iput p2, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/companion/CompanionDeviceServiceConnector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionApplicationController;

    iget v1, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/companion/CompanionDeviceServiceConnector;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/companion/CompanionApplicationController;->$r8$lambda$aXFrJAFXbKKbolzjXrcmp223CSA(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    return-void
.end method
