.class public final Lcom/google/android/gms/internal/measurement/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/measurement/p;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/p;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget p0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    check-cast v3, Lcom/google/android/gms/internal/measurement/q;

    iget-object v0, v3, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    iget p0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    check-cast v3, Lcom/google/android/gms/internal/measurement/q;

    iget-object v0, v3, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :goto_2
    iget p0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    check-cast v3, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v0

    if-ge p0, v0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/p;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    check-cast v1, Lcom/google/android/gms/internal/measurement/q;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/measurement/q;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    iget-object p0, v1, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    check-cast v1, Lcom/google/android/gms/internal/measurement/q;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    check-cast v1, Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/d;->l()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/d;->m(I)Lcom/google/android/gms/internal/measurement/n;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/p;->b:I

    const-string v1, "Out of bounds index: "

    invoke-static {v1, p0}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
