.class public final Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;
.super Lcom/samsung/android/multicontrol/MultiControlManagerInternal;
.source "MultiControlManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/android/server/multicontrol/MultiControlManagerService$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    return-void
.end method


# virtual methods
.method public isMultiControlEnabled()Z
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmInputFilter(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/view/IInputFilter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
