.class public final Landroidx/core/transition/TransitionKt$addListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/transition/TransitionKt$addListener$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/transition/TransitionKt$addListener$1;

    invoke-direct {v0}, Landroidx/core/transition/TransitionKt$addListener$1;-><init>()V

    sput-object v0, Landroidx/core/transition/TransitionKt$addListener$1;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroidx/core/transition/TransitionKt$addListener$1;->invoke(Landroid/transition/Transition;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Landroid/transition/Transition;)V
    .locals 0

    .line 2
    return-void
.end method
