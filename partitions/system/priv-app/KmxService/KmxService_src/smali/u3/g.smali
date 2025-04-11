.class public final Lu3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu3/g;->a:I

    .line 1
    iput-object p1, p0, Lu3/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o0:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu3/g;->a:I

    .line 3
    iput-object p1, p0, Lu3/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
