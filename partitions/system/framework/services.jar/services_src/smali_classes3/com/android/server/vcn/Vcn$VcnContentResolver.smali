.class public Lcom/android/server/vcn/Vcn$VcnContentResolver;
.super Ljava/lang/Object;
.source "Vcn.java"


# instance fields
.field public final mImpl:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;)V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
