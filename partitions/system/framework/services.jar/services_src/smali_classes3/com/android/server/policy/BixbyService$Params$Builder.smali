.class public Lcom/android/server/policy/BixbyService$Params$Builder;
.super Ljava/lang/Object;
.source "BixbyService.java"


# instance fields
.field public doublePress:Z

.field public event:Landroid/view/KeyEvent;

.field public interactive:Z

.field public isPowerCombination:Z

.field public isUnlockFP:Z

.field public longPress:Z

.field public showToast:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetdoublePress(Lcom/android/server/policy/BixbyService$Params$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->doublePress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetevent(Lcom/android/server/policy/BixbyService$Params$Builder;)Landroid/view/KeyEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->event:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinteractive(Lcom/android/server/policy/BixbyService$Params$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->interactive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisPowerCombination(Lcom/android/server/policy/BixbyService$Params$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->isPowerCombination:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisUnlockFP(Lcom/android/server/policy/BixbyService$Params$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->isUnlockFP:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlongPress(Lcom/android/server/policy/BixbyService$Params$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->longPress:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetshowToast(Lcom/android/server/policy/BixbyService$Params$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->showToast:Z

    return p0
.end method

.method public constructor <init>(Landroid/view/KeyEvent;Z)V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->showToast:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->longPress:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->doublePress:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->isUnlockFP:Z

    .line 212
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->isPowerCombination:Z

    .line 218
    iput-object p1, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->event:Landroid/view/KeyEvent;

    .line 219
    iput-boolean p2, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->interactive:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/policy/BixbyService$Params;
    .locals 2

    .line 223
    new-instance v0, Lcom/android/server/policy/BixbyService$Params;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params$Builder;Lcom/android/server/policy/BixbyService$Params-IA;)V

    return-object v0
.end method

.method public setDoublePress()Lcom/android/server/policy/BixbyService$Params$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->doublePress:Z

    return-object p0
.end method

.method public setLongPress()Lcom/android/server/policy/BixbyService$Params$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->longPress:Z

    return-object p0
.end method

.method public setPowerCombination(Z)Lcom/android/server/policy/BixbyService$Params$Builder;
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->isPowerCombination:Z

    return-object p0
.end method

.method public showToast()Lcom/android/server/policy/BixbyService$Params$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params$Builder;->showToast:Z

    return-object p0
.end method
