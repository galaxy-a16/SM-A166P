.class public final Landroidx/appcompat/widget/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b1;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/w0;->a:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/w0;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/w0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/widget/w0;->d:Ljava/lang/Object;

    iput p4, p0, Landroidx/appcompat/widget/w0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/a;ILcom/google/android/gms/measurement/internal/x2;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/w0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/w0;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/appcompat/widget/w0;->b:I

    iput-object p3, p0, Landroidx/appcompat/widget/w0;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/widget/w0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/appcompat/widget/w0;->a:I

    iget v1, p0, Landroidx/appcompat/widget/w0;->b:I

    iget-object v2, p0, Landroidx/appcompat/widget/w0;->d:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/appcompat/widget/w0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v3, Landroid/widget/TextView;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :goto_0
    check-cast v3, Lg/a;

    check-cast v2, Lcom/google/android/gms/measurement/internal/x2;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    iget-object v0, v3, Lg/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/f5;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/f5;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lg/a;->c()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    const-string v2, "Completed wakeful intent."

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/measurement/internal/f5;->a(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
