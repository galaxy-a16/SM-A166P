.class public Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;
.super Ljava/lang/Object;
.source "KnoxGuardService.java"

# interfaces
.implements Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;->this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockedByPasscode()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUnlockedByPasscode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;->this$0:Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->-$$Nest$fgetmContext(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "com.samsung.kgclient.android.intent.action.MANUAL_UNLOCK"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/samsung/android/knoxguard/service/IntentRelayManager;->sendRequestedIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
