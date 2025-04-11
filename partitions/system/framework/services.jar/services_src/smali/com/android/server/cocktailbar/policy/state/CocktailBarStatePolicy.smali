.class public interface abstract Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "CocktailBarStatePolicy.java"


# virtual methods
.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
.end method

.method public abstract getWindowType()I
.end method

.method public abstract initialize()V
.end method

.method public abstract notifyStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract updateActivate(Z)V
.end method

.method public abstract updateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract updatePosition(I)V
.end method

.method public abstract updateVisibility(I)V
.end method
