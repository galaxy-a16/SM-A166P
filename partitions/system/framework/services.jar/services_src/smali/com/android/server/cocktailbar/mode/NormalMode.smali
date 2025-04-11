.class public Lcom/android/server/cocktailbar/mode/NormalMode;
.super Ljava/lang/Object;
.source "NormalMode.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getModeId()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationType()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public renewMode(I)I
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/NormalMode;->getModeId()I

    move-result p0

    return p0
.end method
