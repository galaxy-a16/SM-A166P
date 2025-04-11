.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final synthetic val$personaService:Lcom/android/server/pm/PersonaManagerService;

.field public final synthetic val$timeMs:J

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/pm/PersonaManagerService;JI)V
    .locals 0

    .line 2234
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    iput-wide p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$timeMs:J

    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "DevicePolicyManager"

    const-string/jumbo v1, "notify persona to may log analytics"

    .line 2237
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$timeMs:J

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$userHandle:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/pm/PersonaManagerService;->notifyPersona(JI)V

    return-void
.end method
