.class public final synthetic Landroidx/lifecycle/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m0;


# instance fields
.field public final synthetic a:Lvb/b;


# direct methods
.method public constructor <init>(Lvb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/g;->a:Lvb/b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/lifecycle/m0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/lifecycle/g;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/g;

    iget-object p1, p1, Landroidx/lifecycle/g;->a:Lvb/b;

    iget-object p0, p0, Landroidx/lifecycle/g;->a:Lvb/b;

    invoke-static {p0, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/g;->a:Lvb/b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/g;->a:Lvb/b;

    invoke-interface {p0, p1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
