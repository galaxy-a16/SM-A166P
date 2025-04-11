.class public Lcom/android/server/multicontrol/MultiControlManagerService$1;
.super Landroid/database/ContentObserver;
.source "MultiControlManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 273
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$minitializeStates(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    .line 274
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-static {p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fgetmResolver(Lcom/android/server/multicontrol/MultiControlManagerService;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 275
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/multicontrol/MultiControlManagerService;Landroid/database/ContentObserver;)V

    return-void
.end method
