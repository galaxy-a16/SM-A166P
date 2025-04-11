.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceContainer.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    .line 1443
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransientSystemBarsVisibilityChanged(IZZ)V
    .locals 0

    .line 1447
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$fgetmSystemUiVisibilityPolicyController(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->transientChanged(Z)V

    return-void
.end method
