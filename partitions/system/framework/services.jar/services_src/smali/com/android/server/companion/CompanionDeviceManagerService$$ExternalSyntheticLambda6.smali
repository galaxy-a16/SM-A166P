.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->$r8$lambda$vID3t4wl4Rq5tHKAyfhIBArlF_8(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
