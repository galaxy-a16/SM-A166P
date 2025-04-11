.class public final Lc3/r;
.super Lc3/s;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lb3/g;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lb3/g;)V
    .locals 0

    iput-object p1, p0, Lc3/r;->a:Landroid/content/Intent;

    iput-object p2, p0, Lc3/r;->b:Lb3/g;

    invoke-direct {p0}, Lc3/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc3/r;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc3/r;->b:Lb3/g;

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lb3/g;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
