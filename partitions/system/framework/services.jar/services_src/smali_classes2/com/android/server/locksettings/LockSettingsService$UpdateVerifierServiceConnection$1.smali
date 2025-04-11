.class public Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;
.super Lcom/android/internal/widget/IUpdateVerifierCallback$Stub;
.source "LockSettingsService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

.field public final synthetic val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;Lcom/android/internal/widget/IUpdateVerifierInterface;)V
    .locals 0

    .line 2740
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;

    invoke-direct {p0}, Lcom/android/internal/widget/IUpdateVerifierCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveSaGuid(Ljava/lang/String;)V
    .locals 3

    .line 2742
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2743
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->-$$Nest$munbindService(Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;)V

    return-void

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->-$$Nest$mmakeSalt(Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;)[B

    move-result-object v0

    .line 2747
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->mCredential:[B

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->-$$Nest$mmakeVerifier(Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;Ljava/lang/String;[B[B)[B

    move-result-object p1

    .line 2748
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/widget/IUpdateVerifierInterface;->updateVerifier([B[B)V

    .line 2749
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->-$$Nest$munbindService(Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;)V

    return-void
.end method
