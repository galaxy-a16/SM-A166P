.class public Lcom/android/server/am/mars/filter/FilterChainFactory;
.super Ljava/lang/Object;
.source "FilterChainFactory.java"


# instance fields
.field public filterHashMap:Ljava/util/HashMap;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/FilterChainFactory-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;
    .locals 1

    .line 40
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory$FilterChainFactoryHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getAppLockerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 100
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 101
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getAutoRunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 116
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 117
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x8

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x10

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getBlockListFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 319
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 320
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 321
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getCalmModeFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 255
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 256
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x6

    .line 257
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x13

    .line 264
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x18

    .line 265
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1a

    .line 266
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 267
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getDBUpdateFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 272
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 273
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 278
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 200
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 201
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x4

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 203
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x15

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x16

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x19

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getEmergencyKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 294
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 295
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 297
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 298
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 301
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 303
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 304
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 305
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getEnhancedFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 326
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 327
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x2

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x8

    .line 330
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 334
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 335
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xf

    .line 337
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x17

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1a

    .line 341
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1d

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public getFilterChain(I)Lcom/android/server/am/mars/filter/FilterChain;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/filter/FilterChain;

    return-object p0
.end method

.method public final getForceFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 78
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/16 v1, 0x9

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getFreecessFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 139
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 140
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x1

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x8

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 149
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x12

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1a

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1b

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1c

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getGameFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 235
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 236
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 239
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 240
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 243
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x13

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x18

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getLevelFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 311
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 312
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/16 v1, 0xe

    .line 313
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getMPSMFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 173
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 174
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x6

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getManualDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 220
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 221
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x4

    .line 222
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 225
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x15

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x16

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x19

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getOLAFFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 284
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 285
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x6

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getRecentKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 89
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 90
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/16 v1, 0x9

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xc

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getSBIKERunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 184
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 185
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public final getUDSFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 2

    .line 158
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    .line 159
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChainBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;-><init>()V

    const/4 v1, 0x3

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/4 v1, 0x7

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x9

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xa

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0xe

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object v0

    const/16 v1, 0x11

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->build()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterChainFactory;->setContext(Landroid/content/Context;)V

    .line 49
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getForceFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAppLockerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getAutoRunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getFreecessFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getUDSFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getSBIKERunFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getManualDisablerFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getGameFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getCalmModeFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getDBUpdateFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getOLAFFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getEmergencyKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getLevelFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getBlockListFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getEnhancedFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getMPSMFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->filterHashMap:Ljava/util/HashMap;

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getRecentKillFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterChainFactory;->mContext:Landroid/content/Context;

    return-void
.end method
