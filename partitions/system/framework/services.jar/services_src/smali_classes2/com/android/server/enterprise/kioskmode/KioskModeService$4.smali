.class public Lcom/android/server/enterprise/kioskmode/KioskModeService$4;
.super Ljava/lang/Object;
.source "KioskModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

.field public final synthetic val$adminUid:I

.field public final synthetic val$info:Lcom/samsung/android/knox/ContextInfo;

.field public final synthetic val$kioskPackage:Ljava/lang/String;

.field public final synthetic val$operation:I

.field public final synthetic val$token:J

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;IIIJ)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iput-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$info:Lcom/samsung/android/knox/ContextInfo;

    iput-object p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$kioskPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$userId:I

    iput p5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$adminUid:I

    iput p6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$operation:I

    iput-wide p7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 805
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$info:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$kioskPackage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mcleanUpKioskMode(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mwipeRecentTasks(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z

    .line 811
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mlaunchHomeActivity(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    .line 814
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$adminUid:I

    iget v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$operation:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mbroadcastKioskResult(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V

    .line 815
    iget-wide v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->val$token:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$sfputmProcessing(Z)V

    return-void
.end method
