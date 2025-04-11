.class public final Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;
.super Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.source "CocktailBarManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fgetmCocktailBarService(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->setSystemBarAppearance(I)V

    return-void
.end method

.method public topAppWindowChanged(IZZ)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->-$$Nest$fgetmCocktailBarService(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->topAppWindowChanged(IZZ)V

    return-void
.end method

.method public turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateSysfsGripDisableFromWindowManager(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public wakupCocktailBarFromWindowManager(ZII)V
    .locals 0

    .line 0
    return-void
.end method
