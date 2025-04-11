.class public final Ln0/a;
.super Ln0/b;
.source "SourceFile"


# static fields
.field public static final b:Ln0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln0/a;

    invoke-direct {v0}, Ln0/a;-><init>()V

    sput-object v0, Ln0/a;->b:Ln0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln0/b;-><init>()V

    return-void
.end method
