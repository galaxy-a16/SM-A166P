.class public Lcom/android/server/pm/PersonaManagerService$3$1;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$3;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$managedProfileUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService$3;Landroid/os/UserHandle;Landroid/content/Intent;)V
    .locals 0

    .line 2487
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3$1;->this$1:Lcom/android/server/pm/PersonaManagerService$3;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$3$1;->val$managedProfileUserHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$3$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2490
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$3$1;->this$1:Lcom/android/server/pm/PersonaManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3$1;->val$managedProfileUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$3$1;->val$intent:Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onWorkProfileAdded(ILjava/lang/String;)V

    return-void
.end method
