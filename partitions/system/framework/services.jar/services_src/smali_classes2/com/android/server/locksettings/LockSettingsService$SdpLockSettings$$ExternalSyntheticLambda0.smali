.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    check-cast p1, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->$r8$lambda$sdM3kiodHn_zirO_Z5tup2WwXJA(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V

    return-void
.end method
