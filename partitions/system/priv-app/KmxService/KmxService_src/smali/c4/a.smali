.class public final synthetic Lc4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/chip/Chip;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/a;->a:Lcom/google/android/material/chip/Chip;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p0, p0, Lc4/a;->a:Lcom/google/android/material/chip/Chip;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/internal/g;

    if-eqz v0, :cond_1

    check-cast v0, Lp5/c;

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/internal/a;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/a;->b(Lcom/google/android/material/internal/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/material/internal/a;->b:Z

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/internal/a;->g(Lcom/google/android/material/internal/h;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->e()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_2
    return-void
.end method
