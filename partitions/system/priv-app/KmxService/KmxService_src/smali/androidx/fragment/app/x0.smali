.class public final Landroidx/fragment/app/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/w0;


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/fragment/app/y0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y0;I)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/x0;->c:Landroidx/fragment/app/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/fragment/app/x0;->a:I

    const/4 p1, 0x1

    iput p1, p0, Landroidx/fragment/app/x0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/x0;->c:Landroidx/fragment/app/y0;

    iget-object v1, v0, Landroidx/fragment/app/y0;->x:Landroidx/fragment/app/Fragment;

    iget v2, p0, Landroidx/fragment/app/x0;->a:I

    if-eqz v1, :cond_0

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/y0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/y0;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/fragment/app/x0;->b:I

    invoke-virtual {v0, p1, p2, v2, p0}, Landroidx/fragment/app/y0;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p0

    return p0
.end method
