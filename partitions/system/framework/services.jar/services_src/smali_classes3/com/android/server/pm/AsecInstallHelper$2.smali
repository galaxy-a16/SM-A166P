.class public Lcom/android/server/pm/AsecInstallHelper$2;
.super Ljava/lang/Object;
.source "AsecInstallHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$mediaStatus:Z

.field public final synthetic val$reportStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;ZZ)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    iput-boolean p3, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    iget-boolean p0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$mupdateExternalMediaStatusInner(Lcom/android/server/pm/AsecInstallHelper;ZZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PackageManager"

    const-string/jumbo v1, "updateExternalMediaStatus RuntimeException"

    .line 277
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x5

    const-string/jumbo v0, "updateExternalMediaStatus runtime exception: is asec cmd timeout?"

    .line 278
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
