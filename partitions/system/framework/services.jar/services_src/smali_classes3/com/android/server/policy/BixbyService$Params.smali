.class public Lcom/android/server/policy/BixbyService$Params;
.super Ljava/lang/Object;
.source "BixbyService.java"


# instance fields
.field public final doublePress:Z

.field public final event:Landroid/view/KeyEvent;

.field public final interactive:Z

.field public final isPowerCombination:Z

.field public final isUnlockFP:Z

.field public final longPress:Z

.field public final showToast:Z


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    iput-boolean p2, p0, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    iput-boolean p3, p0, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    iput-boolean p4, p0, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    iput-boolean p5, p0, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    iput-boolean p6, p0, Lcom/android/server/policy/BixbyService$Params;->isUnlockFP:Z

    iput-boolean p7, p0, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/BixbyService$Params$Builder;)V
    .locals 8

    invoke-static {p1}, Lcom/android/server/policy/BixbyService$Params$Builder;->-$$Nest$fgetevent(Lcom/android/server/policy/BixbyService$Params$Builder;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/policy/BixbyService$Params$Builder;->-$$Nest$fgetinteractive(Lcom/android/server/policy/BixbyService$Params$Builder;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/server/policy/BixbyService$Params$Builder;->-$$Nest$fgetshowToast(Lcom/android/server/policy/BixbyService$Params$Builder;)Z

    move-result v3

    invoke-static {p1}, Lcom/android/server/policy/BixbyService$Params$Builder;->-$$Nest$fgetlongPress(Lcom/android/server/policy/BixbyService$Params$Builder;)Z

    move-result v4

    invoke-static {p1}, Lcom/android/server/policy/BixbyService$Params$Builder;->-$$Nest$fgetdoublePress(Lcom/android/server/policy/BixbyService$Params$Builder;)Z

    move-result v5

    invoke-static {p1}, Lcom/android/server/policy/BixbyService$Params$Builder;->-$$Nest$fgetisUnlockFP(Lcom/android/server/policy/BixbyService$Params$Builder;)Z

    move-result v6

    invoke-static {p1}, Lcom/android/server/policy/BixbyService$Params$Builder;->-$$Nest$fgetisPowerCombination(Lcom/android/server/policy/BixbyService$Params$Builder;)Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;ZZZZZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/BixbyService$Params$Builder;Lcom/android/server/policy/BixbyService$Params-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params$Builder;)V

    return-void
.end method
