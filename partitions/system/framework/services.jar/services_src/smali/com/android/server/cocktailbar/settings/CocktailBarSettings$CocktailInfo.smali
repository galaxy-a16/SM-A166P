.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"


# instance fields
.field public final cocktailId:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    .line 53
    iput-object p2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->packageName:Ljava/lang/String;

    return-void
.end method
