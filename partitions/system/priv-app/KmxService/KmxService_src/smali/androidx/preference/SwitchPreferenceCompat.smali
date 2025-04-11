.class public Landroidx/preference/SwitchPreferenceCompat;
.super Landroidx/preference/TwoStatePreference;
.source "SourceFile"


# instance fields
.field public final v:Lq0/a;

.field public w:Ljava/lang/CharSequence;

.field public x:Ljava/lang/CharSequence;

.field public final y:Ld/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030466

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lq0/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq0/a;-><init>(Landroidx/preference/TwoStatePreference;I)V

    iput-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->v:Lq0/a;

    new-instance v0, Ld/f;

    invoke-direct {v0, p0}, Ld/f;-><init>(Landroidx/preference/SwitchPreferenceCompat;)V

    iput-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->y:Ld/f;

    sget-object v0, Lq0/c;->l:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p1, p2, v2}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 2
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->p:Ljava/lang/CharSequence;

    const/4 p2, 0x6

    const/4 p3, 0x1

    .line 3
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 4
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->q:Ljava/lang/CharSequence;

    const/16 p2, 0x9

    const/4 p3, 0x3

    .line 5
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 6
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->w:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    const/4 p3, 0x4

    .line 7
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/a0;->u(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 8
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->x:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 10
    iput-boolean p2, p0, Landroidx/preference/TwoStatePreference;->u:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final h(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->h(Landroid/view/View;)V

    const-string v0, "accessibility"

    iget-object v1, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/widget/Checkable;

    iget-boolean v4, p0, Landroidx/preference/TwoStatePreference;->n:Z

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    if-eqz v1, :cond_4

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->w:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->v:Lq0/a;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/preference/SwitchPreferenceCompat;->y:Ld/f;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p0, Landroidx/preference/SeslSwitchPreferenceScreen;

    if-nez v1, :cond_4

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->d()Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->l(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method
