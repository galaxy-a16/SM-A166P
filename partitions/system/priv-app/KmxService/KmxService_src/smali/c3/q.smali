.class public final Lc3/q;
.super Lc3/s;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    iput-object p2, p0, Lc3/q;->a:Landroid/content/Intent;

    iput-object p1, p0, Lc3/q;->b:Landroid/app/Activity;

    const/4 p1, 0x2

    iput p1, p0, Lc3/q;->c:I

    invoke-direct {p0}, Lc3/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc3/q;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc3/q;->b:Landroid/app/Activity;

    iget p0, p0, Lc3/q;->c:I

    invoke-virtual {v1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
